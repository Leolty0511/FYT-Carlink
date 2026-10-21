.class public Lmodule/canbus/c$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/c;


# direct methods
.method public constructor <init>(Lmodule/canbus/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/c$n;->a:Lmodule/canbus/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/c$n;->a:Lmodule/canbus/c;

    iget-byte v1, v0, Lmodule/canbus/c;->y:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lmodule/canbus/c;->y:B

    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    .line 2
    invoke-static {v0}, Lmodule/canbus/c;->t3(Lmodule/canbus/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmodule/canbus/c$n;->a:Lmodule/canbus/c;

    const/4 v1, 0x0

    iput-byte v1, v0, Lmodule/canbus/c;->y:B

    :cond_0
    return-void
.end method
