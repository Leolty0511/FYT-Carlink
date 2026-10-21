.class public Lg/o$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/o;


# direct methods
.method public constructor <init>(Lg/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/o$l;->a:Lg/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->b:Lo0/h;

    instance-of v1, v0, Lo0/h;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lo0/h;->u()V

    :cond_0
    return-void
.end method
