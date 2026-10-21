.class final Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->createSpan(Landroid/content/Context;Landroid/content/Intent;)Landroid/text/style/ClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
