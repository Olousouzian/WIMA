#pragma once

#include <windows.h>
#include <interception.h>

using namespace System;

namespace CoreCLR
{
	public ref class Kernel
	{
	public:

		// Event Key Down
		delegate void DelDown(int);
		event DelDown^ EDown;
		void keyDown(int code) { EDown(code); }

		// Event Key Up
		delegate void DelUp(int);
		event DelUp^ EUp;
		void keyUp(int code) { EUp(code); }

		// Install the kernel and enabled the events routing
		void InstallKernel()
		{
			_context = interception_create_context();
			interception_set_filter(_context, interception_is_keyboard, INTERCEPTION_FILTER_KEY_DOWN | INTERCEPTION_FILTER_KEY_UP);
			_routeEnabled = true;
		}

		// Launch the kernel
		void Run()
		{	
			InterceptionKeyStroke stroke;

			while (interception_receive(_context, _device = interception_wait(_context), (InterceptionStroke *)&stroke, 1) > 0)
			{
				// If the routing is enabled -> raise the event
				if (_routeEnabled && isKeyChar(stroke.code))
				{
					if (stroke.state == 0)
						keyDown(stroke.code);
					else
						keyUp(stroke.code);
				}
				// Don't touch anything, send the event
				else
					interception_send(_context, _device, (InterceptionStroke *)&stroke, 1);
			}
		}

		// Send a code
		void SendKey(int keyCode)
		{
			InterceptionStroke stroke = { keyCode, INTERCEPTION_KEY_DOWN };
			interception_send(_context, _device, (InterceptionStroke *)&stroke, 1);
		}

		// Unistall the kernel
		void UninstallKernel()
		{
			interception_destroy_context(_context);
		}

		// Get the route status
		bool RouteEnabled()
		{
			return _routeEnabled;
		}

		//Set the route status
		void RouteEnabled(bool routeStatus)
		{
			_routeEnabled = routeStatus;
		}

	private :

		// Attributes
		InterceptionContext _context;
		InterceptionDevice _device;
		bool _routeEnabled;

		// Check if the code equals to a char
		bool isKeyChar(int code)
		{
			// Debug Only
			//Console::WriteLine(code);

			// Q -----------------> P
			if (code >= 16 && code <= 25)
				return true;
			// A -----------------> L
			if (code >= 30 && code <= 38)
				return true;
			// Z ------------------> M
			if (code >= 44 && code <= 50)
				return true;

			return false;
		}
	};
}
