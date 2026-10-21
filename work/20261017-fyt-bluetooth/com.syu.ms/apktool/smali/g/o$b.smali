.class public Lg/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/o;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/o;


# direct methods
.method public constructor <init>(Lg/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/o$b;->a:Lg/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, 0x6d

    const-string v1, "param0"

    const/4 v2, -0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/syu/jni/ToolsJni;->getSystemCtrlState(ILjava/lang/String;I)I

    move-result v1

    const-string v3, "param1"

    .line 2
    invoke-static {v0, v3, v2}, Lcom/syu/jni/ToolsJni;->getSystemCtrlState(ILjava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x12

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x2

    aput v0, v2, v1

    .line 3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
