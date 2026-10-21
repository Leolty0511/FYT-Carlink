.class public Lo0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo0/a;


# direct methods
.method public constructor <init>(Lo0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/a$c;->a:Lo0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    sget v0, Lo0/e;->h:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lo0/g;->z(I)V

    :cond_0
    return-void
.end method
