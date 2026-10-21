.class public Lmodule/canbus/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/u;


# direct methods
.method public constructor <init>(Lmodule/canbus/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/u$b;->a:Lmodule/canbus/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/canbus/u$b;->a:Lmodule/canbus/u;

    invoke-virtual {v0}, Lmodule/canbus/u;->c3()V

    return-void
.end method
