.class public Lmodule/canbus/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/b;


# direct methods
.method public constructor <init>(Lmodule/canbus/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/b$a;->a:Lmodule/canbus/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/canbus/b$a;->a:Lmodule/canbus/b;

    invoke-static {v0}, Lmodule/canbus/b;->e3(Lmodule/canbus/b;)V

    return-void
.end method
