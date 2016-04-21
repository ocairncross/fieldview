#ifndef QUICKVIEW_H
#define QUICKVIEW_H

#include <QQuickView>

class QuickView : public QQuickView
{
	Q_OBJECT
	public:
		QuickView(QWindow * parent);
		~QuickView();
	private:	
};

#endif // QUICKVIEW_H
