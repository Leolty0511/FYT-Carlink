.class public Landroid/ddm/DdmRegister;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerHandlers()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/ddm/DdmHandleHello;->register()V

    .line 2
    invoke-static {}, Landroid/ddm/DdmHandleThread;->register()V

    .line 3
    invoke-static {}, Landroid/ddm/DdmHandleHeap;->register()V

    .line 4
    invoke-static {}, Landroid/ddm/DdmHandleNativeHeap;->register()V

    .line 5
    invoke-static {}, Landroid/ddm/DdmHandleProfiling;->register()V

    .line 6
    invoke-static {}, Landroid/ddm/DdmHandleExit;->register()V

    .line 7
    invoke-static {}, Landroid/ddm/DdmHandleViewDebug;->register()V

    .line 8
    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registrationComplete()V

    return-void
.end method
