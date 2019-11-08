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



#ifndef SBK_QTTEST_PYTHON_H
#define SBK_QTTEST_PYTHON_H

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
#include <pyside2_qtwidgets_python.h>

// Binded library includes
#include <qtest_global.h>
#include <pysideqtesttouch.h>
#include <qbenchmarkmetric.h>
#include <qtestkeyboard.h>
#include <qtestmouse.h>
// Conversion Includes - Primitive Types
#include <signalmanager.h>
#include <typeresolver.h>
#include <QStringList>
#include <QString>
#include <qabstractitemmodel.h>

// Conversion Includes - Container Types
#include <QMultiMap>
#include <QStack>
#include <QSet>
#include <QQueue>
#include <pysideconversions.h>
#include <QMap>
#include <QPair>
#include <QVector>
#include <QLinkedList>
#include <QList>

// Type indices
#define SBK_QTEST_IDX                                                0
#define SBK_QTEST_TESTFAILMODE_IDX                                   5
#define SBK_QTEST_QBENCHMARKMETRIC_IDX                               4
#define SBK_QTEST_KEYACTION_IDX                                      1
#define SBK_QTEST_MOUSEACTION_IDX                                    2
#define SBK_QTEST_PYSIDEQTOUCHEVENTSEQUENCE_IDX                      3
#define SBK_QtTest_IDX_COUNT                                         6

// This variable stores all Python types exported by this module.
extern PyTypeObject** SbkPySide2_QtTestTypes;

// This variable stores all type converters exported by this module.
extern SbkConverter** SbkPySide2_QtTestTypeConverters;

// Converter indices
#define SBK_QTTEST_QLIST_QVARIANT_IDX                                0 // QList<QVariant >
#define SBK_QTTEST_QLIST_QSTRING_IDX                                 1 // QList<QString >
#define SBK_QTTEST_QMAP_QSTRING_QVARIANT_IDX                         2 // QMap<QString, QVariant >
#define SBK_QtTest_CONVERTERS_IDX_COUNT                              3

// Macros for type check

namespace Shiboken
{

// PyType functions, to get the PyObjectType for a type T
template<> inline PyTypeObject* SbkType< ::QTest::TestFailMode >() { return SbkPySide2_QtTestTypes[SBK_QTEST_TESTFAILMODE_IDX]; }
template<> inline PyTypeObject* SbkType< ::QTest::QBenchmarkMetric >() { return SbkPySide2_QtTestTypes[SBK_QTEST_QBENCHMARKMETRIC_IDX]; }
template<> inline PyTypeObject* SbkType< ::QTest::KeyAction >() { return SbkPySide2_QtTestTypes[SBK_QTEST_KEYACTION_IDX]; }
template<> inline PyTypeObject* SbkType< ::QTest::MouseAction >() { return SbkPySide2_QtTestTypes[SBK_QTEST_MOUSEACTION_IDX]; }
template<> inline PyTypeObject* SbkType< ::QTest::PySideQTouchEventSequence >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtTestTypes[SBK_QTEST_PYSIDEQTOUCHEVENTSEQUENCE_IDX]); }

} // namespace Shiboken

#endif // SBK_QTTEST_PYTHON_H
