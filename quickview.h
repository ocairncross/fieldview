#ifndef QUICKVIEW_H
#define QUICKVIEW_H

#include <QQuickView>
#include <iostream>
using namespace std;

class QuickView : public QQuickView
{
	Q_OBJECT
	public:
		QuickView();
		QuickView(QWindow * parent);
		~QuickView();
	private:
		void QuickView::initializeUnderlay();
		void QuickView::renderUnderlay();
};

#endif // QUICKVIEW_H
