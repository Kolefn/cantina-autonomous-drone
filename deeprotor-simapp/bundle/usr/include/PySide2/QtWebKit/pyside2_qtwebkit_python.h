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



#ifndef SBK_QTWEBKIT_PYTHON_H
#define SBK_QTWEBKIT_PYTHON_H

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
#include <pyside2_qtnetwork_python.h>

// Binded library includes
#include <qwebdatabase.h>
// Conversion Includes - Primitive Types
#include <QStringList>
#include <signalmanager.h>
#include <QString>
#include <qabstractitemmodel.h>
#include <typeresolver.h>

// Conversion Includes - Container Types
#include <QPair>
#include <QVector>
#include <QMap>
#include <QList>
#include <pysideconversions.h>
#include <QMultiMap>
#include <QSet>
#include <QStack>
#include <QLinkedList>
#include <QQueue>

// Type indices
#define SBK_WEBCORE_IDX                                              0
#define SBK_QtWebKit_IDX_COUNT                                       1

// This variable stores all Python types exported by this module.
extern PyTypeObject** SbkPySide2_QtWebKitTypes;

// This variable stores all type converters exported by this module.
extern SbkConverter** SbkPySide2_QtWebKitTypeConverters;

// Converter indices
#define SBK_QTWEBKIT_QLIST_QVARIANT_IDX                              0 // QList<QVariant >
#define SBK_QTWEBKIT_QLIST_QSTRING_IDX                               1 // QList<QString >
#define SBK_QTWEBKIT_QMAP_QSTRING_QVARIANT_IDX                       2 // QMap<QString, QVariant >
#define SBK_QtWebKit_CONVERTERS_IDX_COUNT                            3

// Macros for type check

namespace Shiboken
{

// PyType functions, to get the PyObjectType for a type T

} // namespace Shiboken

#endif // SBK_QTWEBKIT_PYTHON_H

