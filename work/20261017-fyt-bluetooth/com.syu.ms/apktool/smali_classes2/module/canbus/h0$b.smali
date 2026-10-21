.class public Lmodule/canbus/h0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/h0;


# direct methods
.method public constructor <init>(Lmodule/canbus/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/h0$b;->a:Lmodule/canbus/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/canbus/h0$b;->a:Lmodule/canbus/h0;

    invoke-virtual {v0}, Lmodule/canbus/h0;->a3()V

    return-void
.end method
