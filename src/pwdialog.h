#ifndef PWDIALOG_H
#define PWDIALOG_H

#include <QDialog>
#include <QString>
#include <QLineEdit>

#include "ui_pwdialog.h"

class PWDialog : public QDialog, private Ui::PWDialog
{
    Q_OBJECT

public:
    PWDialog( QWidget* parent = 0, const char* name = 0,
             bool modal = false, Qt::WindowFlags fl = 0 )
    	: QDialog(parent, fl)
	{
		setModal(modal);
		setAccessibleName(name);
		setupUi(this);
		QWidget *wnd = window();
		if( wnd ) {
		    wnd->setWindowFlags(wnd->windowFlags() | Qt::WindowStaysOnTopHint);
		}
	}
	
	~PWDialog(){}

	void krb5promptSetText(const QString& text)
	{
		krb5prompt->setText(text);
	}

	void promptEditSetEchoMode(QLineEdit::EchoMode mode)
	{
		promptEdit->setEchoMode(mode);
	}

	QString promptEditText() const
	{
		return promptEdit->text();
	}
	
	void errorLabelSetText(const QString& text)
	{
		errorLabel->setText(text);
	}
	
	
};

#endif // PWDIALOG_H
