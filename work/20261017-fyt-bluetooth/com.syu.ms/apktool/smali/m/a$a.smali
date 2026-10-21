.class public Lm/a$a;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm/a;


# direct methods
.method public constructor <init>(Lm/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/a$a;->a:Lm/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm/a$a;->a:Lm/a;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lm/a;->a(Lm/a;I)I

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm/a$a;->a:Lm/a;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lm/a;->b(Lm/a;I)I

    return-void
.end method
