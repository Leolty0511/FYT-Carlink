.class public Lmodule/canbus/e0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/e0;


# direct methods
.method public constructor <init>(Lmodule/canbus/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/e0$b;->a:Lmodule/canbus/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/e0$b;->a:Lmodule/canbus/e0;

    sget v1, Lu0/b;->K3:I

    invoke-static {v0, v1}, Lmodule/canbus/e0;->p3(Lmodule/canbus/e0;I)V

    return-void
.end method
