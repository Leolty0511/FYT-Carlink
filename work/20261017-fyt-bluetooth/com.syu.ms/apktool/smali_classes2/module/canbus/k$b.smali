.class public Lmodule/canbus/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/k;


# direct methods
.method public constructor <init>(Lmodule/canbus/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/k$b;->a:Lmodule/canbus/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/k$b;->a:Lmodule/canbus/k;

    iget-object v0, v0, Lmodule/canbus/k;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/k$b;->a:Lmodule/canbus/k;

    const/4 v1, 0x5

    iput v1, v0, Lmodule/canbus/k;->k:I

    return-void
.end method
