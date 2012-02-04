struct xpvcv {
  HV*         xmg_stash;
  union _xmgu xmg_u;
  STRLEN      xpv_cur;
  STRLEN      xpv_len;
  HV *        xcv_stash;
  union { OP *  xcv_start;
          ANY   xcv_xsubany;
  }           xcv_start_u;
  union { OP *  xcv_root;
          void  (*xcv_xsub) (pTHX_ CV*);
  }           xcv_root_u;
  GV *        xcv_gv;
  char *      xcv_file;
  AV *        xcv_padlist;
  CV *        xcv_outside;
  U32         xcv_outside_seq;
  cv_flags_t  xcv_flags
  I32 xcv_depth;
};
