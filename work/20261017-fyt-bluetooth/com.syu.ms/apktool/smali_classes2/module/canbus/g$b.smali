.class public Lmodule/canbus/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/g;


# direct methods
.method public constructor <init>(Lmodule/canbus/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/g$b;->a:Lmodule/canbus/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, -0x7c

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 1
    invoke-static {}, Lmodule/canbus/g;->c3()I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    invoke-static {}, Ll0/c0;->m()V

    return-void
.end method
