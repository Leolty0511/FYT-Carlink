.class public Lk0/bt$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bt;


# direct methods
.method public constructor <init>(Lk0/bt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bt$c;->a:Lk0/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->n4:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lu0/b;->f:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lu0/d;->u0()V

    :cond_0
    return-void
.end method
