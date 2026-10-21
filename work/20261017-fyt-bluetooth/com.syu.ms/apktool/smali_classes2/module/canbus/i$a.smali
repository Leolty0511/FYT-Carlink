.class public Lmodule/canbus/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/i;


# direct methods
.method public constructor <init>(Lmodule/canbus/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/i$a;->a:Lmodule/canbus/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/canbus/i$a;->a:Lmodule/canbus/i;

    invoke-static {v0}, Lmodule/canbus/i;->e3(Lmodule/canbus/i;)V

    return-void
.end method
