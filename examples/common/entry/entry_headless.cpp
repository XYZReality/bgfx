#include "entry_p.h"

#if ENTRY_CONFIG_USE_NATIVE

#include <bgfx/platform.h>

#include <bx/mutex.h>
#include <bx/handlealloc.h>
#include <bx/os.h>
#include <bx/thread.h>
#include <bx/timer.h>
#include <bx/uint32_t.h>

#include <tinystl/allocator.h>
#include <tinystl/string.h>
#include <tinystl/vector.h>

namespace entry
{
	struct MainThreadEntry
	{
		int m_argc;
		const char* const* m_argv;

		static int32_t threadFunc(bx::Thread* _thread, void* _userData);
	};

	struct Msg
	{
		Msg()
			: m_x(0)
			, m_y(0)
			, m_width(0)
			, m_height(0)
		{
		}

		int32_t  m_x;
		int32_t  m_y;
		uint32_t m_width;
		uint32_t m_height;
	};

	struct Context
	{
		Context()
			: m_mz(0)
			, m_init(false)
			, m_exit(false)
		{
		}

		int32_t run(int _argc, const char* const* _argv)
		{
			m_width     = ENTRY_DEFAULT_WIDTH;
			m_height    = ENTRY_DEFAULT_HEIGHT;
			m_oldWidth  = ENTRY_DEFAULT_WIDTH;
			m_oldHeight = ENTRY_DEFAULT_HEIGHT;

			MainThreadEntry mte;
			mte.m_argc = _argc;
			mte.m_argv = _argv;

			#if BGFX_CONFIG_MULTITHREADED
			bgfx::renderFrame();
			#endif

			bx::Thread thread;
			thread.init(mte.threadFunc, &mte);
			m_init = true;

			m_eventQueue.postSizeEvent(BGFX_INVALID_HANDLE, m_width, m_height);

			while (!m_exit)
			{
				#if BGFX_CONFIG_MULTITHREADED
				bgfx::renderFrame();
				#endif
			}

			#if BGFX_CONFIG_MULTITHREADED
			while (bgfx::RenderFrame::NoContext != bgfx::renderFrame() ) {};
			#endif

			thread.shutdown();

			return thread.getExitCode();
		}

		EventQueue m_eventQueue;
		bx::Mutex m_lock;

		uint32_t m_width;
		uint32_t m_height;
		uint32_t m_oldWidth;
		uint32_t m_oldHeight;
		uint32_t m_frameWidth;
		uint32_t m_frameHeight;
		float m_aspectRatio;

		int32_t m_mx;
		int32_t m_my;
		int32_t m_mz;

		bool m_init;
		bool m_exit;

	};

	static Context s_ctx;

	const Event* poll()
	{
		return s_ctx.m_eventQueue.poll();
	}

	const Event* poll(WindowHandle _handle)
	{
		return s_ctx.m_eventQueue.poll(_handle);
	}

	void release(const Event* _event)
	{
		s_ctx.m_eventQueue.release(_event);
	}

	void destroyWindow(WindowHandle _handle)
	{
	}

	void setWindowSize(WindowHandle _handle, uint32_t _width, uint32_t _height)
	{
	}

	void setWindowTitle(WindowHandle _handle, const char* _title)
	{
	}

	void setWindowFlags(WindowHandle _handle, uint32_t _flags, bool _enabled)
	{
	}

	void toggleFullscreen(WindowHandle _handle)
	{
	}

	void setMouseLock(WindowHandle _handle, bool _lock)
	{
	}

	void* getNativeWindowHandle(WindowHandle _handle)
	{
		return nullptr;
	}

	void* getNativeDisplayHandle()
	{
		return NULL;
	}

	int32_t MainThreadEntry::threadFunc(bx::Thread* /*_thread*/, void* _userData)
	{
		MainThreadEntry* self = (MainThreadEntry*)_userData;
		int32_t result = main(self->m_argc, self->m_argv);
		return result;
	}

} // namespace entry

int main(int _argc, const char* const* _argv)
{
	using namespace entry;
	return s_ctx.run(_argc, _argv);
}

#endif
