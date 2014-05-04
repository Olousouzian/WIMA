#pragma once

#include "stdafx.h"
#include <interception.h>

class Core
{
public:
	Core();
	~Core();
	void Install();
	void Uninstall();
	void  Interception

private:
	InterceptionContext context;
	InterceptionDevice device;
	InterceptionKeyStroke stroke;
};

