// WimaCore.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <interception.h>

enum ScanCode
{
    SCANCODE_X   = 0x2D,
    SCANCODE_Y   = 0x15,
    SCANCODE_ESC = 0x01
};


int _tmain(int argc, _TCHAR* argv[])
{

	InterceptionContext context;
	InterceptionDevice device;
	InterceptionKeyStroke stroke;

	context = interception_create_context();

	interception_set_filter(context, interception_is_keyboard, INTERCEPTION_FILTER_KEY_DOWN | INTERCEPTION_FILTER_KEY_UP);

	while (interception_receive(context, device = interception_wait(context), (InterceptionStroke *)&stroke, 1) > 0)
	{
		if (stroke.code == SCANCODE_X) stroke.code = SCANCODE_Y;

		interception_send(context, device, (InterceptionStroke *)&stroke, 1);

		if (stroke.code == SCANCODE_ESC) break;
	}

	interception_destroy_context(context);

	return 0;
}
