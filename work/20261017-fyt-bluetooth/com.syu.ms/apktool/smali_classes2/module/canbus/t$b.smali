.class public Lmodule/canbus/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/t;


# direct methods
.method public constructor <init>(Lmodule/canbus/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/t$b;->a:Lmodule/canbus/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/t$b;->a:Lmodule/canbus/t;

    const/4 v1, 0x0

    iput v1, v0, Lmodule/canbus/t;->g:I

    .line 2
    iput v1, v0, Lmodule/canbus/t;->h:I

    .line 3
    sget v1, Lu0/b;->a0:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {v0}, Lmodule/canbus/t;->l3(Lmodule/canbus/t;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lmodule/canbus/t$b;->a:Lmodule/canbus/t;

    const/4 v1, 0x5

    iput-byte v1, v0, Lmodule/canbus/t;->k:B

    :cond_0
    return-void
.end method
