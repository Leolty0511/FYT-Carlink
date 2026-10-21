.class public Le/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/e$a;->a:I

    .line 3
    iput p2, p0, Le/e$a;->b:I

    .line 4
    iput p3, p0, Le/e$a;->c:I

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0

    .line 1
    iput p1, p0, Le/e$a;->a:I

    .line 2
    iput p2, p0, Le/e$a;->b:I

    .line 3
    iput p3, p0, Le/e$a;->c:I

    return-void
.end method
