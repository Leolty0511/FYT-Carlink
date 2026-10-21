.class public Lmodule/canbus/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/l;


# direct methods
.method public constructor <init>(Lmodule/canbus/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/l$a;->a:Lmodule/canbus/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/canbus/l$a;->a:Lmodule/canbus/l;

    invoke-static {v0}, Lmodule/canbus/l;->f3(Lmodule/canbus/l;)V

    return-void
.end method
