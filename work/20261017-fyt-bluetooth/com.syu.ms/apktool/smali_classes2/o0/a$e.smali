.class public Lo0/a$e;
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
    iput-object p1, p0, Lo0/a$e;->a:Lo0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->h:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget v0, Lu0/b;->D:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lo0/g;->l()V

    .line 3
    invoke-static {v2}, Lo0/g;->z(I)V

    const/4 v0, 0x2

    const/16 v1, 0x5a

    .line 4
    invoke-static {v0, v1}, Lz/k;->n(II)V

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lu0/b;->D:I

    if-ne v0, v1, :cond_1

    .line 6
    sget v0, Lo0/e;->h:I

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v2}, Lo0/g;->z(I)V

    :cond_1
    :goto_0
    return-void
.end method
