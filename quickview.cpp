#include "quickview.h"

QuickView::QuickView(QWindow * parent) : QQuickView(parent)
{
	//setClearBeforeRendering(false);
	setResizeMode(SizeRootObjectToView);	
	setSource(QUrl(QStringLiteral("qrc:/main.qml")));
}

QuickView::~QuickView()
{

}
