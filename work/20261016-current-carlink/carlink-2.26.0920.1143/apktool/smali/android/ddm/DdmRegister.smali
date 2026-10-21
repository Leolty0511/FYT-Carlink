.class public Landroid/ddm/DdmRegister;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerHandlers()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/ddm/DdmHandleHello;->register()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/ddm/DdmHandleThread;->register()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/ddm/DdmHandleHeap;->register()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/ddm/DdmHandleNativeHeap;->register()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/ddm/DdmHandleProfiling;->register()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/ddm/DdmHandleExit;->register()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/ddm/DdmHandleViewDebug;->register()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registrationComplete()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
