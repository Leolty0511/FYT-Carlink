.class public Lmodule/canbus/w$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/w;


# direct methods
.method public constructor <init>(Lmodule/canbus/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/w$c;->a:Lmodule/canbus/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/canbus/w$c;->a:Lmodule/canbus/w;

    invoke-static {v0}, Lmodule/canbus/w;->a3(Lmodule/canbus/w;)V

    return-void
.end method
