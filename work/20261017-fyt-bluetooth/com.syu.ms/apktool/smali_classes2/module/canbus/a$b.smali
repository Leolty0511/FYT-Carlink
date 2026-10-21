.class public Lmodule/canbus/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/a;


# direct methods
.method public constructor <init>(Lmodule/canbus/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/a$b;->a:Lmodule/canbus/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/canbus/a$b;->a:Lmodule/canbus/a;

    invoke-virtual {v0}, Lmodule/canbus/a;->a3()V

    return-void
.end method
