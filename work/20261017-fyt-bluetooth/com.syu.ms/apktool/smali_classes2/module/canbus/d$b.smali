.class public Lmodule/canbus/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/d;


# direct methods
.method public constructor <init>(Lmodule/canbus/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/d$b;->a:Lmodule/canbus/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/canbus/d$b;->a:Lmodule/canbus/d;

    invoke-static {v0}, Lmodule/canbus/d;->c3(Lmodule/canbus/d;)V

    return-void
.end method
