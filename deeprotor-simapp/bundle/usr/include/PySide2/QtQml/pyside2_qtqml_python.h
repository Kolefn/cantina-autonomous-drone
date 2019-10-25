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



#ifndef SBK_QTQML_PYTHON_H
#define SBK_QTQML_PYTHON_H

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
#include <pyside2_qtnetwork_python.h>
#include <pyside2_qtgui_python.h>
#include <pyside2_qtquick_python.h>

// Binded library includes
#include <qqmlfileselector.h>
#include <qjsengine.h>
#include <qqmlproperty.h>
#include <qjsvalue.h>
#include <qqmllist.h>
#include <qqmlexpression.h>
#include <qqmlerror.h>
#include <qqmlcontext.h>
#include <qqmlengine.h>
#include <qqmlapplicationengine.h>
// Conversion Includes - Primitive Types
#include <qabstractitemmodel.h>
#include <QString>
#include <typeresolver.h>
#include <signalmanager.h>
#include <QStringList>

// Conversion Includes - Container Types
#include <QList>
#include <QMultiMap>
#include <QVector>
#include <QLinkedList>
#include <pysideconversions.h>
#include <QSet>
#include <QQueue>
#include <QMap>
#include <QStack>
#include <QPair>

// Type indices
#define SBK_QQMLPROPERTY_IDX                                         12
#define SBK_QQMLPROPERTY_PROPERTYTYPECATEGORY_IDX                    13
#define SBK_QQMLPROPERTY_TYPE_IDX                                    14
#define SBK_QQMLERROR_IDX                                            8
#define SBK_QQMLLISTREFERENCE_IDX                                    11
#define SBK_QJSVALUE_IDX                                             1
#define SBK_QJSVALUE_SPECIALVALUE_IDX                                2
#define SBK_QQMLEXPRESSION_IDX                                       9
#define SBK_QQMLCONTEXT_IDX                                          5
#define SBK_QQMLFILESELECTOR_IDX                                     10
#define SBK_QJSENGINE_IDX                                            0
#define SBK_QQMLENGINE_IDX                                           6
#define SBK_QQMLENGINE_OBJECTOWNERSHIP_IDX                           7
#define SBK_QQMLAPPLICATIONENGINE_IDX                                4
#define SBK_QML_HAS_ATTACHED_PROPERTIES_IDX                          3
#define SBK_QtQml_IDX_COUNT                                          15

// This variable stores all Python types exported by this module.
extern PyTypeObject** SbkPySide2_QtQmlTypes;

// This variable stores all type converters exported by this module.
extern SbkConverter** SbkPySide2_QtQmlTypeConverters;

// Converter indices
#define SBK_QTQML_QLIST_QJSVALUE_IDX                                 0 // const QList<QJSValue > &
#define SBK_QTQML_QLIST_QOBJECTPTR_IDX                               1 // const QList<QObject * > &
#define SBK_QTQML_QLIST_QBYTEARRAY_IDX                               2 // QList<QByteArray >
#define SBK_QTQML_QLIST_QQMLERROR_IDX                                3 // QList<QQmlError > *
#define SBK_QTQML_QLIST_QVARIANT_IDX                                 4 // QList<QVariant >
#define SBK_QTQML_QLIST_QSTRING_IDX                                  5 // QList<QString >
#define SBK_QTQML_QMAP_QSTRING_QVARIANT_IDX                          6 // QMap<QString, QVariant >
#define SBK_QtQml_CONVERTERS_IDX_COUNT                               7

// Macros for type check

namespace Shiboken
{

// PyType functions, to get the PyObjectType for a type T
template<> inline PyTypeObject* SbkType< ::QQmlProperty::PropertyTypeCategory >() { return SbkPySide2_QtQmlTypes[SBK_QQMLPROPERTY_PROPERTYTYPECATEGORY_IDX]; }
template<> inline PyTypeObject* SbkType< ::QQmlProperty::Type >() { return SbkPySide2_QtQmlTypes[SBK_QQMLPROPERTY_TYPE_IDX]; }
template<> inline PyTypeObject* SbkType< ::QQmlProperty >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQmlTypes[SBK_QQMLPROPERTY_IDX]); }
template<> inline PyTypeObject* SbkType< ::QQmlError >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQmlTypes[SBK_QQMLERROR_IDX]); }
template<> inline PyTypeObject* SbkType< ::QQmlListReference >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQmlTypes[SBK_QQMLLISTREFERENCE_IDX]); }
template<> inline PyTypeObject* SbkType< ::QJSValue::SpecialValue >() { return SbkPySide2_QtQmlTypes[SBK_QJSVALUE_SPECIALVALUE_IDX]; }
template<> inline PyTypeObject* SbkType< ::QJSValue >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQmlTypes[SBK_QJSVALUE_IDX]); }
template<> inline PyTypeObject* SbkType< ::QQmlExpression >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQmlTypes[SBK_QQMLEXPRESSION_IDX]); }
template<> inline PyTypeObject* SbkType< ::QQmlContext >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQmlTypes[SBK_QQMLCONTEXT_IDX]); }
template<> inline PyTypeObject* SbkType< ::QQmlFileSelector >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQmlTypes[SBK_QQMLFILESELECTOR_IDX]); }
template<> inline PyTypeObject* SbkType< ::QJSEngine >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQmlTypes[SBK_QJSENGINE_IDX]); }
template<> inline PyTypeObject* SbkType< ::QQmlEngine::ObjectOwnership >() { return SbkPySide2_QtQmlTypes[SBK_QQMLENGINE_OBJECTOWNERSHIP_IDX]; }
template<> inline PyTypeObject* SbkType< ::QQmlEngine >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQmlTypes[SBK_QQMLENGINE_IDX]); }
template<> inline PyTypeObject* SbkType< ::QQmlApplicationEngine >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtQmlTypes[SBK_QQMLAPPLICATIONENGINE_IDX]); }

} // namespace Shiboken

#endif // SBK_QTQML_PYTHON_H

