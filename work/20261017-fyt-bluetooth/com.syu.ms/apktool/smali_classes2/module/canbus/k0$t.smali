.class public Lmodule/canbus/k0$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/k0;


# direct methods
.method public constructor <init>(Lmodule/canbus/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/k0$t;->a:Lmodule/canbus/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/k0$t;->a:Lmodule/canbus/k0;

    sget-object v1, Lh0/c;->j:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Lmodule/canbus/k0;->r3(Lmodule/canbus/k0;BLjava/lang/String;)V

    return-void
.end method
