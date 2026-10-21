.class public Lo1/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public final synthetic c:Lo1/h0;


# direct methods
.method public constructor <init>(Lo1/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/h0$a;->c:Lo1/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lo1/h0$a;->a:Z

    return-void
.end method
