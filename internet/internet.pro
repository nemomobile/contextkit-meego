include(../common.pri)

TEMPLATE = lib
CONFIG += debug \
          link_pkgconfig \
          plugin
PKGCONFIG += contextprovider-1.0 contextsubscriber-1.0
TARGET = internet
PKGCONFIG += connman-qt
target.path = $$CONTEXTKIT_SUBSCRIBER_PLUGIN_PATH

SOURCES += connmanprovider.cpp
HEADERS += connmanprovider.h

configuration.files = internet.context
configuration.path = $$CONTEXTKIT_PROVIDER_CONTEXT_PATH

INSTALLS += target configuration

