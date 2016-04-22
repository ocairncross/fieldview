#include "quickview.h"

QuickView::QuickView()
{
	
	connect(this, &QQuickWindow::sceneGraphInitialized,
		this, &QuickView::initializeUnderlay,
		Qt::DirectConnection);

	connect(this, &QQuickWindow::beforeRendering,
		this, &QuickView::renderUnderlay,
		Qt::DirectConnection);

	//setClearBeforeRendering(false);
	setWidth(640);
	setHeight(480);
	setTitle("Flow Vis");
	
	setResizeMode(SizeRootObjectToView);	
	//setSource(QUrl(QStringLiteral("qrc:/main.qml")));
	setSource(QUrl("qrc:///main.qml"));
}

QuickView::~QuickView()
{

}

void QuickView::initializeUnderlay()
{
	qDebug("  *** initialiseUnderLay ***");	
	// m_renderer->initialize();
	// resetOpenGLState();
}

void QuickView::renderUnderlay()
{
	qDebug("  *** renderUnderLay ***");
	// m_renderer->render();
	//resetOpenGLState();
}
