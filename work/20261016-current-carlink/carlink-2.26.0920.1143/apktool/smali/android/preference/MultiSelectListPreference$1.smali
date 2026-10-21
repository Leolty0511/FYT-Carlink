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
.field final synthetic this$0:Landroid/preference/MultiSelectListPreference;


# direct methods
.method public constructor <init>(Landroid/preference/MultiSelectListPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/preference/MultiSelectListPreference;->access$000(Landroid/preference/MultiSelectListPreference;)Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/preference/MultiSelectListPreference;->access$200(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/preference/MultiSelectListPreference;->access$100(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    aget-object p2, v1, p2

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    or-int/2addr p2, p3

    .line 32
    invoke-static {p1, p2}, Landroid/preference/MultiSelectListPreference;->access$002(Landroid/preference/MultiSelectListPreference;Z)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    .line 37
    .line 38
    invoke-static {p1}, Landroid/preference/MultiSelectListPreference;->access$000(Landroid/preference/MultiSelectListPreference;)Z

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    .line 43
    .line 44
    invoke-static {v0}, Landroid/preference/MultiSelectListPreference;->access$200(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    .line 49
    .line 50
    invoke-static {v1}, Landroid/preference/MultiSelectListPreference;->access$100(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    aget-object p2, v1, p2

    .line 55
    .line 56
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    or-int/2addr p2, p3

    .line 65
    invoke-static {p1, p2}, Landroid/preference/MultiSelectListPreference;->access$002(Landroid/preference/MultiSelectListPreference;Z)Z

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method
