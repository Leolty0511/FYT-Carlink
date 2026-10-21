.class public Lmodule/canbus/l$b;
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
    iput-object p1, p0, Lmodule/canbus/l$b;->a:Lmodule/canbus/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/l$b;->a:Lmodule/canbus/l;

    sget v1, Lu0/b;->K3:I

    invoke-static {v0, v1}, Lmodule/canbus/l;->g3(Lmodule/canbus/l;I)V

    return-void
.end method
