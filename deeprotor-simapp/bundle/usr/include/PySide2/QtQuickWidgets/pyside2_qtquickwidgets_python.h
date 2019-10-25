/*
 * This file is part of PySide: Python for Qt
 *
 * Copyright (C) 2013 Digia Plc and/or its subsidiary(-ies).
 *
 * Contact: PySide team <contact@pyside.org>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public License
 * version 2.1 as published by the Free Software Foundation.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
 * 02110-1301 USA
 *
 */



#ifndef SBK_QTQUICKWIDGETS_PYTHON_H
#define SBK_QTQUICKWIDGETS_PYTHON_H

//workaround to access protected functions
#define protected public

#include <sbkpython.h>
#include <conversions.h>
#include <sbkenum.h>
#include <basewrapper.h>
#include <bindingmanager.h>
#include <memory>

#include <pysidesignal.h>
// Module Includes
#include <pyside2_qtcore_python.h>
#include <pyside2_qtgui_python.h>
#include <pyside2_qtquick_python.h>
#include <pyside2_qtqml_python.h>
#include <pyside2_qtnetwork_python.h>
#include <pyside2_qtwidgets_python.h>

// Binded library includes
#include <qquickwidget.h>
// Conversion Includes - Primitive Types
#include <qabstractitemmodel.h>
#include <QStringList>
#include <signalmanager.h>
#include <typeresolver.h>
#include <QString>

// Conversion Includes - Container Types
#include <QMultiMap>
#include <QList>
#include <QSet>
#include <pysideconversions.h>
#include <QPair>
#include <QQueue>
#include <QStack>
#include <QVector>
#include <QMap>
#include <QLinkedList>

// Type indices
#define SBK_QQUICKWIDGET_IDX                                         0
#define SBK_QQUICKWIDGET_RESIZEMODE_IDX                              1
#define SBK_QQUICKWIDGET_STATUS_IDX                                  2
#define SBK_QtQuickWidgets_IDX_COUNT                                 3

// This variable stores all Python types exported by this module.
extern PyTypeObject** SbkPySide2_QtQuickWidgetsTypes;

// This variable stores all type converters exported by this module.
extern SbkConverter** SbkPySide2_QtQuickWidgetsTypeConverters;

// Converter indices
#define SBK_QTQUICKWIDGETS_QLIST_QACTIONPTR_IDX                      0 // QList<QAction * >
#define SBK_QTQUICKWIDGETS_QLIST_QQMLERROR_IDX                       1 // QList<QQmlError >
#define SBK_QTQUICKWIDGETS_QLIST_QVARIANT_IDX                        2 // QList<QVariant >
#define SBK_QTQUICKWIDGETS_QLIST_QSTRING_IDX                         3 // QList<QString >
#define SBK_QTQUICKWIDGETS_QMAP_QSTRING_QVARIANT_IDX                 4 // QMap<QString, QVariant >
#define SBK_QtQuickWidgets_CONVERTERS_IDX_COUNT                      5

// Macros for type check

namespace Shiboken
{

// PyType functions, to get the PyObjectType for a type T
template<> inline PyTypeObject* SbkType< ::QQuickWidget::ResizeMode >() { return SbkPySide2_QtQuickWidgetsTypes[SBK_QQUICKWIDGET_RESIZEMODE_IDX]; }
template<> inline PyTypeObject* SbkType< ::QQuickWidget::Status >() { return SbkPySide2_QtQuickWidgetsTypes[SBK_QQUICKWIDGET_STATUS_IDX]; }
template<> inline PyTypeObject* SbkType< ::QQuickWidget >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQuickWidgetsTypes[SBK_QQUICKWIDGET_IDX]); }

} // namespace Shiboken

#endif // SBK_QTQUICKWIDGETS_PYTHON_H

