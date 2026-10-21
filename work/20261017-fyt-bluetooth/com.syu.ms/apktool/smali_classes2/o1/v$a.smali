.class public Lo1/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lo1/o;

.field public b:I

.field public final synthetic c:Lo1/v;


# direct methods
.method public constructor <init>(Lo1/v;Lo1/o;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/v$a;->c:Lo1/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lo1/v$a;->a:Lo1/o;

    .line 3
    iput p3, p0, Lo1/v$a;->b:I

    return-void
.end method
