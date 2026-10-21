.class public Lk0/kt$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/kt$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/kt$c;


# direct methods
.method public constructor <init>(Lk0/kt$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/kt$c$a;->a:Lk0/kt$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-boolean v0, Lk0/kt;->O:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 2
    sput v1, Lk0/kt;->M:I

    const-string v0, "Log\u93c1\u7248\u5d41\u93b7\u75af\u7909\u5bb8\u63d2\u756c\u93b4\ufffd"

    .line 3
    invoke-static {v0}, Lk0/kt;->u3(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sput v1, Lk0/kt;->M:I

    const-string v0, "Log\u93c1\u7248\u5d41\u93b7\u75af\u7909\u6fb6\u8fab\u89e6"

    .line 5
    invoke-static {v0}, Lk0/kt;->u3(Ljava/lang/String;)V

    .line 6
    :goto_0
    sget-object v0, Lk0/kt;->S:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
