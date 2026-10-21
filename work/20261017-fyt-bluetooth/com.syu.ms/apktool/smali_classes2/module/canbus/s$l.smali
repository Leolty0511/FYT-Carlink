.class public Lmodule/canbus/s$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/s;


# direct methods
.method public constructor <init>(Lmodule/canbus/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/s$l;->a:Lmodule/canbus/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/s$l;->a:Lmodule/canbus/s;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lmodule/canbus/s;->k3(Lmodule/canbus/s;Ljava/lang/String;)V

    return-void
.end method
