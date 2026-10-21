.class public Lmodule/canbus/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/e;


# direct methods
.method public constructor <init>(Lmodule/canbus/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/e$c;->a:Lmodule/canbus/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/canbus/e$c;->a:Lmodule/canbus/e;

    invoke-static {v0}, Lmodule/canbus/e;->d3(Lmodule/canbus/e;)V

    return-void
.end method
