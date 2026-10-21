.class public Lcom/lsec/core/ipc/util/Util_Ipc;
.super Ljava/lang/Object;
.source "Util_Ipc.java"


# static fields
.field public static mRegister_Null:Lcom/lsec/core/ipc/IRegisterModuleCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/lsec/core/ipc/util/Util_Ipc$1;

    invoke-direct {v0}, Lcom/lsec/core/ipc/util/Util_Ipc$1;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/util/Util_Ipc;->mRegister_Null:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
