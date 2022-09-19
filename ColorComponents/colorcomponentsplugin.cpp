#include "colorcomponentsplugin.h"
#include "colorcomponents.h"
#include <qqml.h>

void ColorComponentsPlugin::registerTypes(const char *uri)
{
	// @uri org.astorije.ColorComponents
	qmlRegisterType<ColorComponents>(uri, 1, 0, "ColorComponents");
}

