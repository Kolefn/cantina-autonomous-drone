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



#ifndef SBK_QTQUICK_PYTHON_H
#define SBK_QTQUICK_PYTHON_H

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

// Binded library includes
#include <qquicktextdocument.h>
#include <qquickimageprovider.h>
#include <qquickitem.h>
#include <qquickwindow.h>
#include <qquickview.h>
// Conversion Includes - Primitive Types
#include <QStringList>
#include <signalmanager.h>
#include <typeresolver.h>
#include <QString>
#include <qabstractitemmodel.h>

// Conversion Includes - Container Types
#include <QSet>
#include <QMultiMap>
#include <QVector>
#include <pysideconversions.h>
#include <QStack>
#include <QList>
#include <QMap>
#include <QPair>
#include <QLinkedList>
#include <QQueue>

// Type indices
#define SBK_QQUICKIMAGEPROVIDER_IDX                                  2
#define SBK_QQUICKITEM_IDX                                           3
#define SBK_QQUICKITEM_FLAG_IDX                                      4
#define SBK_QFLAGS_QQUICKITEM_FLAG__IDX                              0
#define SBK_QQUICKITEM_ITEMCHANGE_IDX                                5
#define SBK_QQUICKITEM_TRANSFORMORIGIN_IDX                           6
#define SBK_QQUICKTEXTDOCUMENT_IDX                                   7
#define SBK_QQUICKWINDOW_IDX                                         11
#define SBK_QQUICKWINDOW_CREATETEXTUREOPTION_IDX                     12
#define SBK_QFLAGS_QQUICKWINDOW_CREATETEXTUREOPTION__IDX             1
#define SBK_QQUICKWINDOW_RENDERSTAGE_IDX                             13
#define SBK_QQUICKWINDOW_SCENEGRAPHERROR_IDX                         14
#define SBK_QQUICKVIEW_IDX                                           8
#define SBK_QQUICKVIEW_RESIZEMODE_IDX                                9
#define SBK_QQUICKVIEW_STATUS_IDX                                    10
#define SBK_QtQuick_IDX_COUNT                                        15

// This variable stores all Python types exported by this module.
extern PyTypeObject** SbkPySide2_QtQuickTypes;

// This variable stores all type converters exported by this module.
extern SbkConverter** SbkPySide2_QtQuickTypeConverters;

// Converter indices
#define SBK_QTQUICK_QLIST_QQUICKITEMPTR_IDX                          0 // QList<QQuickItem * >
#define SBK_QTQUICK_QLIST_QOBJECTPTR_IDX                             1 // const QList<QObject * > &
#define SBK_QTQUICK_QLIST_QBYTEARRAY_IDX                             2 // QList<QByteArray >
#define SBK_QTQUICK_QVECTOR_INT_IDX                                  3 // const QVector<int > &
#define SBK_QTQUICK_QLIST_QVARIANT_IDX                               4 // QList<QVariant >
#define SBK_QTQUICK_QLIST_QSTRING_IDX                                5 // QList<QString >
#define SBK_QTQUICK_QMAP_QSTRING_QVARIANT_IDX                        6 // QMap<QString, QVariant >
#define SBK_QtQuick_CONVERTERS_IDX_COUNT                             7

// Macros for type check

namespace Shiboken
{

// PyType functions, to get the PyObjectType for a type T
template<> inline PyTypeObject* SbkType< ::QQuickImageProvider >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQuickTypes[SBK_QQUICKIMAGEPROVIDER_IDX]); }
template<> inline PyTypeObject* SbkType< ::QQuickItem::Flag >() { return SbkPySide2_QtQuickTypes[SBK_QQUICKITEM_FLAG_IDX]; }
template<> inline PyTypeObject* SbkType< ::QFlags<QQuickItem::Flag> >() { return SbkPySide2_QtQuickTypes[SBK_QFLAGS_QQUICKITEM_FLAG__IDX]; }
template<> inline PyTypeObject* SbkType< ::QQuickItem::ItemChange >() { return SbkPySide2_QtQuickTypes[SBK_QQUICKITEM_ITEMCHANGE_IDX]; }
template<> inline PyTypeObject* SbkType< ::QQuickItem::TransformOrigin >() { return SbkPySide2_QtQuickTypes[SBK_QQUICKITEM_TRANSFORMORIGIN_IDX]; }
template<> inline PyTypeObject* SbkType< ::QQuickItem >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQuickTypes[SBK_QQUICKITEM_IDX]); }
template<> inline PyTypeObject* SbkType< ::QQuickTextDocument >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQuickTypes[SBK_QQUICKTEXTDOCUMENT_IDX]); }
template<> inline PyTypeObject* SbkType< ::QQuickWindow::CreateTextureOption >() { return SbkPySide2_QtQuickTypes[SBK_QQUICKWINDOW_CREATETEXTUREOPTION_IDX]; }
template<> inline PyTypeObject* SbkType< ::QFlags<QQuickWindow::CreateTextureOption> >() { return SbkPySide2_QtQuickTypes[SBK_QFLAGS_QQUICKWINDOW_CREATETEXTUREOPTION__IDX]; }
template<> inline PyTypeObject* SbkType< ::QQuickWindow::RenderStage >() { return SbkPySide2_QtQuickTypes[SBK_QQUICKWINDOW_RENDERSTAGE_IDX]; }
template<> inline PyTypeObject* SbkType< ::QQuickWindow::SceneGraphError >() { return SbkPySide2_QtQuickTypes[SBK_QQUICKWINDOW_SCENEGRAPHERROR_IDX]; }
template<> inline PyTypeObject* SbkType< ::QQuickWindow >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQuickTypes[SBK_QQUICKWINDOW_IDX]); }
template<> inline PyTypeObject* SbkType< ::QQuickView::ResizeMode >() { return SbkPySide2_QtQuickTypes[SBK_QQUICKVIEW_RESIZEMODE_IDX]; }
template<> inline PyTypeObject* SbkType< ::QQuickView::Status >() { return SbkPySide2_QtQuickTypes[SBK_QQUICKVIEW_STATUS_IDX]; }
template<> inline PyTypeObject* SbkType< ::QQuickView >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQuickTypes[SBK_QQUICKVIEW_IDX]); }

} // namespace Shiboken

#endif // SBK_QTQUICK_PYTHON_H

