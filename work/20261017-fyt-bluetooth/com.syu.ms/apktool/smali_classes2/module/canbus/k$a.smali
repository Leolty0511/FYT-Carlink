.class public Lmodule/canbus/k$a;
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
    iput-object p1, p0, Lmodule/canbus/k$a;->a:Lmodule/canbus/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/canbus/k$a;->a:Lmodule/canbus/k;

    invoke-static {v0}, Lmodule/canbus/k;->b3(Lmodule/canbus/k;)V

    return-void
.end method
