.class public final synthetic Landroid/view/textclassifier/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/view/textclassifier/EntityConfidence;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/EntityConfidence;I)V
    .locals 0

    iput p2, p0, Landroid/view/textclassifier/a;->b:I

    iput-object p1, p0, Landroid/view/textclassifier/a;->c:Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Landroid/view/textclassifier/a;->b:I

    iget-object v1, p0, Landroid/view/textclassifier/a;->c:Landroid/view/textclassifier/EntityConfidence;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->a(Landroid/view/textclassifier/EntityConfidence;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :goto_0
    invoke-static {v1, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->a(Landroid/view/textclassifier/EntityConfidence;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
