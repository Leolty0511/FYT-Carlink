.class public Lmodule/canbus/b0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/b0;


# direct methods
.method public constructor <init>(Lmodule/canbus/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/b0$c;->a:Lmodule/canbus/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/b0$c;->a:Lmodule/canbus/b0;

    sget v1, Lu0/b;->K3:I

    invoke-static {v0, v1}, Lmodule/canbus/b0;->d3(Lmodule/canbus/b0;I)V

    return-void
.end method
