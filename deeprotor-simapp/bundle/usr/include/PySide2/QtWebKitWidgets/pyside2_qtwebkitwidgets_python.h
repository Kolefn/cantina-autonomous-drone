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



#ifndef SBK_QTWEBKITWIDGETS_PYTHON_H
#define SBK_QTWEBKITWIDGETS_PYTHON_H

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
#include <pyside2_qtwebkit_python.h>
#include <pyside2_qtnetwork_python.h>
#include <pyside2_qtprintsupport_python.h>

// Binded library includes
#include <qwebinspector.h>
#include <qwebview.h>
#include <qwebdatabase.h>
#include <qwebhistoryinterface.h>
#include <qwebpage.h>
#include <qwebhistory.h>
#include <qwebpluginfactory.h>
#include <qwebsettings.h>
#include <qgraphicswebview.h>
#include <qwebframe.h>
#include <qwebsecurityorigin.h>
#include <qwebelement.h>
// Conversion Includes - Primitive Types
#include <signalmanager.h>
#include <typeresolver.h>
#include <QStringList>
#include <QString>
#include <qabstractitemmodel.h>

// Conversion Includes - Container Types
#include <pysideconversions.h>
#include <QPair>
#include <QQueue>
#include <QMap>
#include <QSet>
#include <QStack>
#include <QVector>
#include <QLinkedList>
#include <QList>
#include <QMultiMap>

// Type indices
#define SBK_QWEBHITTESTRESULT_IDX                                    13
#define SBK_QWEBSETTINGS_IDX                                         38
#define SBK_QWEBSETTINGS_FONTFAMILY_IDX                              39
#define SBK_QWEBSETTINGS_WEBATTRIBUTE_IDX                            42
#define SBK_QWEBSETTINGS_WEBGRAPHIC_IDX                              43
#define SBK_QWEBSETTINGS_FONTSIZE_IDX                                40
#define SBK_QWEBSETTINGS_THIRDPARTYCOOKIEPOLICY_IDX                  41
#define SBK_QWEBSECURITYORIGIN_IDX                                   36
#define SBK_QWEBSECURITYORIGIN_SUBDOMAINSETTING_IDX                  37
#define SBK_QWEBHISTORY_IDX                                          10
#define SBK_QWEBHISTORYITEM_IDX                                      12
#define SBK_QWEBELEMENTCOLLECTION_IDX                                6
#define SBK_QWEBELEMENT_IDX                                          4
#define SBK_QWEBELEMENT_STYLERESOLVESTRATEGY_IDX                     5
#define SBK_QWEBDATABASE_IDX                                         3
#define SBK_QWEBINSPECTOR_IDX                                        14
#define SBK_QWEBPAGE_IDX                                             15
#define SBK_QWEBPAGE_NAVIGATIONTYPE_IDX                              27
#define SBK_QWEBPAGE_WEBACTION_IDX                                   30
#define SBK_QWEBPAGE_FINDFLAG_IDX                                    25
#define SBK_QFLAGS_QWEBPAGE_FINDFLAG__IDX                            1
#define SBK_QWEBPAGE_LINKDELEGATIONPOLICY_IDX                        26
#define SBK_QWEBPAGE_WEBWINDOWTYPE_IDX                               31
#define SBK_QWEBPAGE_PERMISSIONPOLICY_IDX                            45
#define SBK_QWEBPAGE_FEATURE_IDX                                     24
#define SBK_QWEBPAGE_VISIBILITYSTATE_IDX                             29
#define SBK_QWEBPAGE_EXTENSION_IDX                                   21
#define SBK_QWEBPAGE_ERRORDOMAIN_IDX                                 18
#define SBK_QWEBPAGE_EXTENSIONOPTION_IDX                             22
#define SBK_QWEBPAGE_CHOOSEMULTIPLEFILESEXTENSIONOPTION_IDX          16
#define SBK_QWEBPAGE_VIEWPORTATTRIBUTES_IDX                          28
#define SBK_QWEBPAGE_ERRORPAGEEXTENSIONOPTION_IDX                    19
#define SBK_QWEBPAGE_EXTENSIONRETURN_IDX                             23
#define SBK_QWEBPAGE_ERRORPAGEEXTENSIONRETURN_IDX                    20
#define SBK_QWEBPAGE_CHOOSEMULTIPLEFILESEXTENSIONRETURN_IDX          17
#define SBK_QWEBPLUGINFACTORY_IDX                                    32
#define SBK_QWEBPLUGINFACTORY_EXTENSION_IDX                          33
#define SBK_QWEBPLUGINFACTORY_MIMETYPE_IDX                           34
#define SBK_QWEBPLUGINFACTORY_PLUGIN_IDX                             35
#define SBK_QWEBHISTORYINTERFACE_IDX                                 11
#define SBK_QWEBVIEW_IDX                                             44
#define SBK_QWEBFRAME_IDX                                            7
#define SBK_QWEBFRAME_VALUEOWNERSHIP_IDX                             9
#define SBK_QWEBFRAME_RENDERLAYER_IDX                                8
#define SBK_QFLAGS_QWEBFRAME_RENDERLAYER__IDX                        0
#define SBK_QGRAPHICSWEBVIEW_IDX                                     2
#define SBK_QtWebKitWidgets_IDX_COUNT                                46

// This variable stores all Python types exported by this module.
extern PyTypeObject** SbkPySide2_QtWebKitWidgetsTypes;

// This variable stores all type converters exported by this module.
extern SbkConverter** SbkPySide2_QtWebKitWidgetsTypeConverters;

// Converter indices
#define SBK_QTWEBKITWIDGETS_QLIST_QWEBSECURITYORIGIN_IDX             0 // QList<QWebSecurityOrigin >
#define SBK_QTWEBKITWIDGETS_QLIST_QWEBDATABASE_IDX                   1 // QList<QWebDatabase >
#define SBK_QTWEBKITWIDGETS_QLIST_QWEBHISTORYITEM_IDX                2 // QList<QWebHistoryItem >
#define SBK_QTWEBKITWIDGETS_QLIST_QWEBELEMENT_IDX                    3 // QList<QWebElement >
#define SBK_QTWEBKITWIDGETS_QLIST_QACTIONPTR_IDX                     4 // QList<QAction * >
#define SBK_QTWEBKITWIDGETS_QLIST_QOBJECTPTR_IDX                     5 // const QList<QObject * > &
#define SBK_QTWEBKITWIDGETS_QLIST_QBYTEARRAY_IDX                     6 // QList<QByteArray >
#define SBK_QTWEBKITWIDGETS_QLIST_QWEBPLUGINFACTORY_PLUGIN_IDX       7 // QList<QWebPluginFactory::Plugin >
#define SBK_QTWEBKITWIDGETS_QLIST_QWEBPLUGINFACTORY_MIMETYPE_IDX     8 // QList<QWebPluginFactory::MimeType >
#define SBK_QTWEBKITWIDGETS_QLIST_QWEBFRAMEPTR_IDX                   9 // QList<QWebFrame * >
#define SBK_QTWEBKITWIDGETS_QMULTIMAP_QSTRING_QSTRING_IDX            10 // QMultiMap<QString, QString >
#define SBK_QTWEBKITWIDGETS_QLIST_QVARIANT_IDX                       11 // QList<QVariant >
#define SBK_QTWEBKITWIDGETS_QLIST_QSTRING_IDX                        12 // QList<QString >
#define SBK_QTWEBKITWIDGETS_QMAP_QSTRING_QVARIANT_IDX                13 // QMap<QString, QVariant >
#define SBK_QtWebKitWidgets_CONVERTERS_IDX_COUNT                     14

// Macros for type check

namespace Shiboken
{

// PyType functions, to get the PyObjectType for a type T
template<> inline PyTypeObject* SbkType< ::QWebHitTestResult >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBHITTESTRESULT_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebSettings::FontFamily >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBSETTINGS_FONTFAMILY_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebSettings::WebAttribute >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBSETTINGS_WEBATTRIBUTE_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebSettings::WebGraphic >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBSETTINGS_WEBGRAPHIC_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebSettings::FontSize >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBSETTINGS_FONTSIZE_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebSettings::ThirdPartyCookiePolicy >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBSETTINGS_THIRDPARTYCOOKIEPOLICY_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebSettings >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBSETTINGS_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebSecurityOrigin::SubdomainSetting >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBSECURITYORIGIN_SUBDOMAINSETTING_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebSecurityOrigin >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBSECURITYORIGIN_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebHistory >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBHISTORY_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebHistoryItem >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBHISTORYITEM_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebElementCollection >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBELEMENTCOLLECTION_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebElement::StyleResolveStrategy >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBELEMENT_STYLERESOLVESTRATEGY_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebElement >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBELEMENT_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebDatabase >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBDATABASE_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebInspector >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBINSPECTOR_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebPage::NavigationType >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_NAVIGATIONTYPE_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebPage::WebAction >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_WEBACTION_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebPage::FindFlag >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_FINDFLAG_IDX]; }
template<> inline PyTypeObject* SbkType< ::QFlags<QWebPage::FindFlag> >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QFLAGS_QWEBPAGE_FINDFLAG__IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebPage::LinkDelegationPolicy >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_LINKDELEGATIONPOLICY_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebPage::WebWindowType >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_WEBWINDOWTYPE_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebPage::PermissionPolicy >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_PERMISSIONPOLICY_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebPage::Feature >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_FEATURE_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebPage::VisibilityState >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_VISIBILITYSTATE_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebPage::Extension >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_EXTENSION_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebPage::ErrorDomain >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_ERRORDOMAIN_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebPage >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebPage::ExtensionOption >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_EXTENSIONOPTION_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebPage::ChooseMultipleFilesExtensionOption >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_CHOOSEMULTIPLEFILESEXTENSIONOPTION_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebPage::ViewportAttributes >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_VIEWPORTATTRIBUTES_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebPage::ErrorPageExtensionOption >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_ERRORPAGEEXTENSIONOPTION_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebPage::ExtensionReturn >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_EXTENSIONRETURN_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebPage::ErrorPageExtensionReturn >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_ERRORPAGEEXTENSIONRETURN_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebPage::ChooseMultipleFilesExtensionReturn >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPAGE_CHOOSEMULTIPLEFILESEXTENSIONRETURN_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebPluginFactory::Extension >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPLUGINFACTORY_EXTENSION_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebPluginFactory >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPLUGINFACTORY_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebPluginFactory::MimeType >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPLUGINFACTORY_MIMETYPE_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebPluginFactory::Plugin >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBPLUGINFACTORY_PLUGIN_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebHistoryInterface >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBHISTORYINTERFACE_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebView >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBVIEW_IDX]); }
template<> inline PyTypeObject* SbkType< ::QWebFrame::ValueOwnership >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBFRAME_VALUEOWNERSHIP_IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebFrame::RenderLayer >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBFRAME_RENDERLAYER_IDX]; }
template<> inline PyTypeObject* SbkType< ::QFlags<QWebFrame::RenderLayer> >() { return SbkPySide2_QtWebKitWidgetsTypes[SBK_QFLAGS_QWEBFRAME_RENDERLAYER__IDX]; }
template<> inline PyTypeObject* SbkType< ::QWebFrame >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QWEBFRAME_IDX]); }
template<> inline PyTypeObject* SbkType< ::QGraphicsWebView >() { return reinterpret_cast<PyTypeObject*>(SbkPySide2_QtWebKitWidgetsTypes[SBK_QGRAPHICSWEBVIEW_IDX]); }

} // namespace Shiboken

#endif // SBK_QTWEBKITWIDGETS_PYTHON_H

