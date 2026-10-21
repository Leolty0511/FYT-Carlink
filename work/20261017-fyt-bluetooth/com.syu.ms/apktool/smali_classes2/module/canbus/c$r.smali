.class public Lmodule/canbus/c$r;
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
    iput-object p1, p0, Lmodule/canbus/c$r;->a:Lmodule/canbus/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/c$r;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->w3(Lmodule/canbus/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/c$r;->a:Lmodule/canbus/c;

    const/4 v1, 0x5

    iput-byte v1, v0, Lmodule/canbus/c;->J:B

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lmodule/canbus/c;->I:I

    return-void
.end method
