#ifndef BASESENCE_H
#define BASESENCE_H

#include "Common.h"

class BaseSence : public QObject
{
    Q_OBJECT
public:
    BaseSence() {}
    virtual ~BaseSence() {}

    virtual void initilize() = 0;
    virtual void onCreated() = 0;
};

#endif // BASESENCE_H
