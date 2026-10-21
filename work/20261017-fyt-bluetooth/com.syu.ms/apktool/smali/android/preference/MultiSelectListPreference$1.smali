.class Landroid/preference/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/preference/MultiSelectListPreference;


# direct methods
.method public constructor <init>(Landroid/preference/MultiSelectListPreference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {p1}, Landroid/preference/MultiSelectListPreference;->access$200(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object p3

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {v0}, Landroid/preference/MultiSelectListPreference;->access$100(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p1, p2}, Landroid/preference/MultiSelectListPreference;->access$076(Landroid/preference/MultiSelectListPreference;I)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {p1}, Landroid/preference/MultiSelectListPreference;->access$200(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object p3

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {v0}, Landroid/preference/MultiSelectListPreference;->access$100(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p1, p2}, Landroid/preference/MultiSelectListPreference;->access$076(Landroid/preference/MultiSelectListPreference;I)Z

    :goto_0
    return-void
.end method
