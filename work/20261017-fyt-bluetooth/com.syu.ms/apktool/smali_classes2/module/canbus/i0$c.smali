.class public Lmodule/canbus/i0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/i0;


# direct methods
.method public constructor <init>(Lmodule/canbus/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/i0$c;->a:Lmodule/canbus/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/i0$c;->a:Lmodule/canbus/i0;

    const/4 v1, 0x0

    iput v1, v0, Lmodule/canbus/i0;->z:I

    .line 2
    iput v1, v0, Lmodule/canbus/i0;->y:I

    .line 3
    invoke-static {v0}, Lmodule/canbus/i0;->P3(Lmodule/canbus/i0;)V

    return-void
.end method
