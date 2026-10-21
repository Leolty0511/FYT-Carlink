.class public Lo0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo0/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo0/c;


# direct methods
.method public constructor <init>(Lo0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/c$a;->a:Lo0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public R(Z)V
    .locals 1

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    .line 1
    invoke-static {v0, v0}, Lu0/d;->T3(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-static {v0, p1}, Lu0/d;->T3(II)V

    :goto_0
    return-void
.end method
