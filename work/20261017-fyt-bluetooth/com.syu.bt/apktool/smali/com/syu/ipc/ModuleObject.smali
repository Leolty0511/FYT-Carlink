.class public Lcom/syu/ipc/ModuleObject;
.super Ljava/lang/Object;
.source "ModuleObject.java"


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    .line 13
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "strValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v0, v2, [I

    aput p1, v0, v1

    iput-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    .line 17
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>([I)V
    .locals 0
    .param p1, "ints"    # [I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    .line 22
    return-void
.end method
