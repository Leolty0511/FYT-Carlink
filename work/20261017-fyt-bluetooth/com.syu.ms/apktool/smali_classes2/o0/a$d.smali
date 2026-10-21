.class public Lo0/a$d;
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
    iput-object p1, p0, Lo0/a$d;->a:Lo0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lo0/g;->l()V

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lo0/g;->z(I)V

    const/16 v1, 0x5a

    .line 4
    invoke-static {v0, v1}, Lz/k;->n(II)V

    :cond_0
    return-void
.end method
